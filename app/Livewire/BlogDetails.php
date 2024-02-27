<?php

namespace App\Livewire;

use App\Models\Article;
use Livewire\Component;

class BlogDetails extends Component
{


    public $blogId=null;

    public function mount($id){
        $this->blogId = $id;
    }

    public function render()
    {
        $article = Article::select('articles.*','categories.name as category_name')->leftJoin('categories','categories.id','articles.category_id')
                    ->findOrFail($this->blogId);

        $data['article'] = $article;
        return view('livewire.blog-details',$data);
    }
}
