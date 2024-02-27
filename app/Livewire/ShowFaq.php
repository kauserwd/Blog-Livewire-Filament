<?php

namespace App\Livewire;

use App\Models\Faq;
use Livewire\Component;

class ShowFaq extends Component
{
    public function render()
    {

        $faqs = Faq::where('status',1)->orderBy('questions','ASC')->get();

        $data['faqs'] = $faqs;
        return view('livewire.show-faq',$data);
    }
}
