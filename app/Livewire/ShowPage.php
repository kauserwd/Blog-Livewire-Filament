<?php

namespace App\Livewire;

use App\Models\Page;
use Livewire\Component;

class ShowPage extends Component
{


    public $pageId=null;

    public function mount($id){
        $this->pageId = $id;
    }


    public function render()
    {

        $pages = Page::findOrFail($this->pageId);
        $data['pages'] = $pages;
        return view('livewire.show-page',$data);
    }
}
