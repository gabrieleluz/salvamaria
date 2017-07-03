<?php
    require_once('../heart/controller/base.php');
    require_once('../models/user.php');

    class User_controller extends \Controller\Base {
        public $fillneeded = ['tipo' => 'tipo', 'login' => 'login', 'senha' => 'senha', 'nome' => 'nome'];
        public $location = '../views/users';
    }


    
    $obj = new User_controller();
    $users = $obj->loadAll();
    $user = $obj->one();