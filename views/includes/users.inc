<div class="top-bar">	
	<a class="btn add">Adicionar Certidão</a>
	<a class="btn add">Relatório de Serviço</a>
</div>

<form class="gt-form small" action="../controllers/user_controller.php<?php Prints::it($user, 'id', 'get/id');  ?>" method="POST">

<label for="tipo">tipo: </label>
<select name="tipo" id="tipo" onchange="toggle(this)">
    <option value="USER">Usuária</option>
    <option value="PM">Policial Militar</option>
    <option value="AP">Apoio Psicológico</option>
</select>

<label for="login" id="matricula">login: </label>
<input id="login" name="login" type="text">

<label for="senha">senha: </label>
<input id="senha" name="senha" type="password">

<!--
<label for="senha">confirmação de senha: </label>
<input id="confirm-senha" name="confirm-senha" type="password">
-->

<label for="nome">nome: </label>
<input id="nome" name="nome" type="text">

<div id="socioform">
	<label for="estado_civil"> estado_civil: </label>
	<select id="estado_civil" name="estado_civil">
		<option value="solteira">solteira</option>
		<option value="casada">casada</option>
		<option value="divorciada">divorciada</option>
	</select>

	<label for="filhos"> filhos: </label>
	<input id="filhos" name="filhos" type="number">

	<label for="filhos_com_agressor"> filhos_com_agressor: </label>
	<input id="filhos_com_agressor" name="filhos_com_agressor" type="number">

	<label for="escolaridade"> escolaridade: </label>
	<select name="escolaridade" id="escolaridade">
		<option value="fundamental_incompleto">fundamental_incompleto</option>
		<option value="fundamental_completo">fundamental_completo</option>
		<option value="medio_incompleto">medio_incompleto</option>
		<option value="medio_completo">medio_completo</option>
		<option value="superior_incompleto">superior_incompleto</option>
		<option value="superior_completo">superior_completo</option>
		<option value="pos-graduacao_incompleto">pos-graduacao_incompleto</option>
		<option value="pos-graduacao_completo">pos-graduacao_completo</option>
	</select>

	<label for="etnia"> etnia: </label>
	<select name="etnia" id="etnia">
		<option value="preta">preta</option>
		<option value="branca">branca</option>
		<option value="amarela">amarela</option>
		<option value="indigena">indigena</option>
	</select>

	<label for="idade"> idade: </label>
	<input id="idade" name="idade" type="number">

	<label for="religiao"> religiao: </label>
	<input id="religiao" name="religiao" type="text">

	<label for="profissao"> profissao: </label>
	<input id="profissao" name="profissao" type="text">

	<label for="trabalha"> trabalha: </label>
	<select name="trabalha" id="trabalha">
		<option value="sim">Sim</option>
		<option value="nao">Nao</option>
	</select>

	<label for="ultimo_emprego"> ultimo_emprego: </label>
	<input id="ultimo_emprego" name="ultimo_emprego" type="text">

	<label for="local_trabalho"> local_trabalho: </label>
	<input id="local_trabalho" name="local_trabalho" type="text">

	<label for="renda"> renda: </label>
	<input id="renda" name="renda" type="text">

	<label for="responsavel_sustento"> responsavel_sustento: </label>
	<input id="responsavel_sustento" name="responsavel_sustento" type="text">
</div>
<button name="action" type="submit" value="store" class="btn sucess">Salvar</button>
<script src="../assets/js/toggle.js"></script>
</form>