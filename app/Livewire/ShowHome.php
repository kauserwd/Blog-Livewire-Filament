<?php

namespace App\Livewire;

use App\Models\Service;
use Livewire\Component;

class ShowHome extends Component
{
    public function render()
    {
        $services = Service::orderBy('title','ASC')->get();
        $data['services'] = $services;
        return view('livewire.show-home',$data);
    }
}
