<?php

namespace App\Livewire;

use App\Models\Member;
use Livewire\Component;

class ShowTeamPage extends Component
{
    public function render()
    {

        $members = Member::orderBy('name','ASC')->where('status',1)->get();
        $data['members'] = $members;

        return view('livewire.show-team-page',$data);
    }
}
