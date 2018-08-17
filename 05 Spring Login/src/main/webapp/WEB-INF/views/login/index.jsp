<%@include file="helper/header.jsp"%>

<div class="container">
	<div class="row">
		<div class="col s3 m3 l3"></div>
	
		<div class="col s6 m6 l6">
			<div class="card" sec:authorize="isAnonymous()">
				<div class="card-content">
					<span class="card-title">
						Login
					</span>
	
					<br/>
	
					<div class="input-field">
						<input class="" type="text" id="user-email" data-ng-model="ctrl.data.email">
						<label class="" for="user-email"> 
						Email:
						</label>
					</div>
	
					<div class="input-field">
						<input class="" type="password" id="user-password" data-ng-model="ctrl.data.senha"> 
						<label class="" for="user-password"> 
						Senha:
						</label>
					</div>
				</div>
				
				<form action="signin/facebook" method="POST">
					<input type="hidden" name="scope" value="public_profile"></input>
					<button type="submit"><img src="static/img/social/facebook/signin.png"></img></button>
				</form>
				
				<!-- form action="auth/facebook" method="POST">
					<input type="hidden" name="scope" value="public_profile" />
					<input type="submit" value="Login using Facebook"/>
				</form -->
				
		        <div class="card-action">
					<a data-ng-click="ctrl.envia()" class="btn">
						Envia
					</a>
					<a href="#!forgot" class="right small-text-button">
						Esqueci minha senha
					</a>
					<a href="#!create" class="right small-text-button">
						Nova Conta
					</a> 
				</div>
			</div>
	
			<div class="card" sec:authorize="isAuthenticated()">
				<span sec:authentication="name">Bob</span>, you are authenticated!!!
			</div>
		</div>
	
		<div class="mdl-cell mdl-cell--3-col"></div>
	</div>
</div>

<script type="application/javascript" src="static/html/login/login/login.controller.js"></script>

<%@include file="helper/footer.jsp"%>
