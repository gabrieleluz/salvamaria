<?php
    require_once('../heart/model/base.php');

    class User extends \Model\Base {
        public $fillable = ['tipo', 'login', 'senha', 'nome'];
    }
?>