<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ReviewResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'review' => $this->review,
            'rating' => $this->rating,
            'userName' => $this->user->name,
            'book' => $this->book->name
        ];
    }
}
