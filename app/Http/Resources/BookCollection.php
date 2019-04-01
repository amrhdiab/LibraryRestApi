<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;

class BookCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     * @param  \Illuminate\Http\Request $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'data' => $this->collection->transform(function($book){
                return [
                    'name' => $book->name,
                    'author' => $book->author,
                    'price' => $book->price,
                    'href'   => [
                        'link' => route('books.show', $book->id)
                    ]
                ];
            }),
        ];
    }
}
