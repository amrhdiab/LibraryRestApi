<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BookResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     * @param  \Illuminate\Http\Request $request
     * @return array
     */
    public function toArray($request)
    {
        //return parent::toArray($request);
        return [
            'name'           => $this->name,
            'description'    => $this->description,
            'price'          => $this->price,
            'author'         => $this->author,
            'stock'          => $this->stock,
            'ratingsAverage' => $this->reviews->count()>0?$this->reviews->sum('rating') / $this->reviews->count():'No ratings yet.',
            'href'           => [
                'reviews' => $this->reviews->count()>0?route('reviews.index', $this->id):'No reviews yet.'
            ],
        ];
    }
}
