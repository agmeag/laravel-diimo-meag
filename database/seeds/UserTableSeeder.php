<?php

use Illuminate\Database\Seeder;
use App\models\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(User::class)->times(20)->create();
    }
}
