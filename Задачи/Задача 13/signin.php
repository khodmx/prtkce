<?php
require "db.php";

$data = $_POST;
if( isset($data['do_login']) )
{
    $errors = array();
    $user = R::findOne('users', 'login = ?', array($data['login']));

    if( $user)
    {

        if( password_verify($data['password'], $user->password))
        {
            $_SESSION['logged_user'] = $user;
            header('Location: ./authorized.php');
            echo '<div style="color: green;">Вы успешно авторизировались</div><hr>';
        } else
        {
            $errors[] = 'Неверный пароль';
        }
    } else
    {
        $errors[] = 'Пользователь не найден';
    }

    if( ! empty($errors) )
    {
        echo '<div style="color: orangered;">'.array_shift($errors).'</div><hr>';
    }
}
?>



