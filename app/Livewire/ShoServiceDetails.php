<?php

namespace App\Livewire;

use App\Models\Service;
use Livewire\Component;

class ShoServiceDetails extends Component
{
    
    public $service;

    public function mount($id){
        $this->service = Service::findOrFail($id);
    }
    
    
    public function render()
    {
        $data['services'] = $this->service;
        return view('livewire.sho-service-details',$data);
    }
}
