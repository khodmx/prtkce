<?php
require "rb/rb.php";
R::setup( 'mysql:host=localhost;dbname=dbcourserium',
    'root', 'root' );
session_start();