<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Book
 *
 * @property int                                                                $id
 * @property string                                                             $name
 * @property string                                                             $description
 * @property string                                                             $author
 * @property int                                                                $stock
 * @property int                                                                $price
 * @property \Illuminate\Support\Carbon|null                                    $created_at
 * @property \Illuminate\Support\Carbon|null                                    $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book whereAuthor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book whereStock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\Review[] $reviews
 * @property int $user_id
 * @property-read \App\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Book whereUserId($value)
 */
class Book extends Model
{
    protected $fillable = [
        'name', 'description', 'price', 'author', 'stock', 'user_id'
    ];

    //Relationship with Review
    public function reviews()
    {
        return $this->hasMany('App\Models\Review');
    }

    //User relationship with reviews
    public function user(){
        return $this->belongsTo('App\User');
    }
}
