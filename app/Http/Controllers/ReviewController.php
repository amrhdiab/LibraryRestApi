<?php

namespace App\Http\Controllers;

use App\Http\Resources\ReviewCollection;
use App\Http\Resources\ReviewResource;
use App\Models\Book;
use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api')->except(['index', 'show']);
    }

    /**
     * Display a listing of the resource.
     * @param Book $book
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function index(Book $book)
    {
        $reviews = $book->reviews()->paginate(5);
        return new ReviewCollection($reviews);
    }

    /**
     *Store a newly created resource in storage.
     * @param Request $request
     * @param Book    $book
     * @return ReviewResource|\Illuminate\Http\JsonResponse
     */
    public function store(Request $request, Book $book)
    {
        if ($book->user_id == $request->user()->id)
        {
            return response()->json(['error' => 'You can\'t make reviews on your own book.'], 403);
        } else
        {
            foreach ($book->reviews as $review)
            {
                if ($review->user_id == $request->user()->id)
                {
                    return response()->json(['error' => 'You can\'t review a book more than once.', 403]);
                }
            }
            $validator = \Validator::make($request->all(), [
                'review' => 'required|min:5|max:200',
                'rating' => 'required|regex:/[1-5]{1}/',

            ]);
            if ($validator->fails())
            {
                return response()->json(['error' => $validator->errors()], 400);
            } else
            {
                $review = Review::create([
                    'review'  => $request['review'],
                    'rating'  => $request['rating'],
                    'user_id' => $request->user()->id,
                    'book_id' => $book->id
                ]);
                return new ReviewResource($review);
            }
        }
    }

    /**
     * Display the specified resource.
     * @param Book   $book
     * @param Review $review
     * @return ReviewResource
     */
    public function show(Book $book, Review $review)
    {
        return new ReviewResource($review);
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param Book    $book
     * @param Review  $review
     * @return ReviewResource|\Illuminate\Http\JsonResponse
     */
    public function update(Request $request, Book $book, Review $review)
    {
        if ($review->user_id == $request->user()->id)
        {
            $validator = \Validator::make($request->all(), [
                'review' => 'required|min:5|max:200',
                'rating' => 'required|regex:/[1-5]{1}/',

            ]);
            if ($validator->fails())
            {
                return response()->json(['error' => $validator->errors()], 400);
            } else
            {
                $review->update([
                    'review'  => $request['review'],
                    'rating'  => $request['rating'],
                    'user_id' => $request->user()->id,
                    'book_id' => $book->id
                ]);
                return new ReviewResource($review);
            }
        } else
        {
            return response()->json(['error' => 'Unauthorised, You can only update your own review info.'], 403);
        }
    }

    /**
     * Remove the specified resource from storage.
     * @param Book   $book
     * @param Review $review
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Book $book, Review $review)
    {
        if (Auth::user()->id == $review->user_id){
            $review->delete();
            return response()->json(null,203);
        }else{
            return response()->json(['error' => 'Unauthorised, You can only delete your own review.'], 403);
        }
    }
}
