<?php 
	require "db.php";


	$data = $_POST;
	if( isset($data['do_reg']) )
	{

	
		$errors = array();


		if( trim($data['login']) == '' )
		{
			$errors[] = 'Введите логин';
		}

		if( trim($data['email']) == '' )
		{
			$errors[] = 'Введите E-mail';
		}

		if( ($data['password']) == '' )
		{
			$errors[] = 'Введите пароль';
		}

		if( ($data['password_confirm']) !=$data['password'] )
		{
			$errors[] = 'Пароли не совпадают';
		}

		if( R::count('users', "email = ?", array($data['email'])) > 0 )
		{
			$errors[] = 'На данный E-mail уже зарегистрирован аккаунт';
		}


		if( empty($errors) )
		{
			$user = R::dispense('users');
			$user->login = $data['login'];
			$user->email = $data['email'];
			$user->password = password_hash($data['password'], PASSWORD_DEFAULT);
			R::store($user);
			$_SESSION['logged_user'] = $user;
			header('Location: ./login.php');
		} else
		{
			echo '<div style="color: red;">'.array_shift($errors).'</div><hr>';
		}

	}
?>
