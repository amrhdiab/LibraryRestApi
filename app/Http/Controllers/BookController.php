<?php

namespace App\Http\Controllers;

use App\Http\Resources\BookCollection;
use App\Http\Resources\BookResource;
use App\Models\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class BookController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api')->except(['index', 'show']);
    }

    /**
     * Display a listing of the resource.
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return  new BookCollection(Book::paginate(5));
    }

    /**
     * Store a newly created resource in storage.
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'name'        => 'required|string|min:4|max:100',
            'description' => 'required|string|min:4|max:400',
            'price'       => 'required|numeric',
            'author'      => 'required|string|min:4|max:50',
            'stock'       => 'required|numeric',
        ]);

        if ($validation->fails())
        {
            return response()->json(['error' => $validation->errors()], 400);
        }

        $book = Book::create([
            'name'        => $request->name,
            'description' => $request->description,
            'price'       => $request->price,
            'author'      => $request->author,
            'stock'       => $request->stock,
            'user_id'     => Auth::user()->id,
        ]);

        return new BookResource($book);
    }

    /**
     * Display the specified resource.
     * @param  \App\Models\Book $book
     * @return \Illuminate\Http\Response
     */
    public function show(Book $book)
    {
        return new BookResource($book);
    }


    /**
     * Update the specified resource in storage.
     * @param  \Illuminate\Http\Request $request
     * @param  \App\Models\Book         $book
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Book $book)
    {
        if ($request->user()->id == $book->user_id)
        {
            $validation = Validator::make($request->all(), [
                'name'        => 'required|string|min:4|max:100',
                'description' => 'required|string|min:4|max:400',
                'price'       => 'required|numeric',
                'author'      => 'required|string|min:4|max:50',
                'stock'       => 'required|numeric',
            ]);

            if ($validation->fails())
            {
                return response()->json(['error' => $validation->errors()], 400);
            } else
            {
                $book->update([
                    'name'        => $request['name'],
                    'description' => $request['description'],
                    'price'       => $request['price'],
                    'author'      => $request['author'],
                    'stock'       => $request['stock'],
                    'user_id'     => $request->user()->id,
                ]);
                return new BookResource($book);
            }
        } else
        {
            return response()->json(['error' => 'Unauthorised, You can only update your own books info.'], 403);
        }
    }

    /**
     * Remove the specified resource from storage.
     * @param  \App\Models\Book $book
     * @return \Illuminate\Http\Response
     */
    public function destroy(Book $book)
    {
        if (Auth::user()->id == $book->user_id)
        {
            $book->delete();
            return response()->json(null, 204);
        } else
        {
            return response()->json(['error' => 'Unauthorised, You can only delete your own books.'], 403);
        }
    }
}
