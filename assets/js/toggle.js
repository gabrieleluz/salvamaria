function toggle(){
	var form = document.getElementById('socioform');
	var login = document.getElementById('matricula').firstChild;
	var tipo = document.getElementById('tipo').value;

	if (tipo === 'USER') {
		form.removeAttribute('style');
		login.replaceWith('Processo: ');
	} else {
		form.setAttribute('style', 'display: none;');
		if (tipo === 'PM') {
			login.replaceWith('Matrícula: ');
		} else if (tipo === 'AP') {
			login.replaceWith('Login: ');
		}
	}
}