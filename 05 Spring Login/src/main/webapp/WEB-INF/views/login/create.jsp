<%@include file="../helper/header.jsp"%>

<div class="container">
	<div class="row">
		<div class="col s3 m3 l3"></div>
	
		<div class="col s6 m6 l6">
			<div class="card">
				<div class="card-content">
					<span class="card-title">Nova Conta</span>
					<p>Entre seus dados abaixo para criar uma nova conta.</p>
					<br />
	
			        <div class="input-field">
			           	<input type="text" id="user-name" data-ng-model="ctrl.data.nome"/>
			            <label for="user-name">Nome:</label>
			        </div>
			        
			        <div class="input-field">
			           	<input type="text" id="user-email" data-ng-model="ctrl.data.email"/>
			            <label for="user-email">E-mail:</label>
			        </div>
			        
			        <div class="input-field">
			           	<input type="password" id="user-password" data-ng-model="ctrl.data.senha"/>
			            <label for="user-password">Senha:</label>
			        </div>
			        
			        <div class="input-field">
			           	<input type="password" id="user-repeatPassword" data-ng-model="ctrl.data.senhaRepetida"/>
			            <label for="user-repeatPassword">Repita sua senha:</label>
			        </div>
				
					<form action="connect/facebook" method="POST">
						<input type="hidden" name="scope" value="public_profile"></input>
						<button type="submit"><img src="static/img/social/facebook/connect.gif"></img></button>
					</form>
				</div>
	
				<div class="card-action">
					<a class="btn" data-ng-click="ctrl.envia()">Envia</a> 
					<a href="#!" class="right small-text-button">Retorna ao login</a>
				</div>
			</div>
		</div>
	
		<div class="col s3 m3 l3"></div>
	</div>
</div>

<script type="application/javascript" src="static/html/login/create/create.controller.js"></script>

<%@include file="../helper/footer.jsp"%>
