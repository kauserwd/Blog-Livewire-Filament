<?php

namespace App\Livewire;

use App\Models\Service;
use Livewire\Component;

class ShoServicePage extends Component
{
    public function render()
    {
        $services = Service::orderBy('title','ASC')->where('status',1)->get();

        $data['services'] = $services;
        return view('livewire.sho-service-page',$data);
    }
}
