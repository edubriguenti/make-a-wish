$(document).ready(function() {
	ko.applyBindings(new MesaController());
});

function MesaController() {
	var self = this;

	self.mesa = ko.observable('0'),

	self.init = function() {
		self.mesa(GetQueryString('numero'));
		self.loadMesas();
		self.loadProdutos();
	}

	self.loadMesas = function() {
		var url = Servico.UrlListaMesa();
		Helpers.Ajax(url, self.loadMesasCallback, {});
	},

	self.loadMesasCallback = function(jsonResponse) {
		alert('retorno');
		for (var i = 0; i < jsonResponse.length; i++) {
			self.mesas().push(jsonResponse[i]);
		}
	},

	self.produtos = ko.observableArray([]);

	self.loadProdutos = function() {
		var produto1 = {
			id : 1,
			peso : 50,
			valor : 50,
			nome : "Balão",
			urlImagem : "/static/img/baloes-personalizados.jpg"
		};

		var produto2 = {
			id : 1,
			peso : 200,
			valor : 50,
			nome : "Sonho",
			urlImagem : "/static/img/sonho.jpg"
		};

		var produto3 = {
			id : 1,
			peso : 100,
			valor : 50,
			nome : "Livro",
			urlImagem : "/static/img/livros.jpg"
		};
		var produtos = [];
		produtos.push(produto1);
		produtos.push(produto2);
		produtos.push(produto3);

		self.loadProdutosCallback(produtos)
	},

	self.loadProdutosCallback = function(jsonResponse) {
		for (var i = 0; i < jsonResponse.length; i++) {
			jsonResponse.ranking = ko.observableArray([]);
			var rankingItem = self.obterRankingItem(jsonResponse[i].id);

			jsonResponse.ranking().pushRange(rankingItem);
			self.produtos().push(jsonResponse[i]);
		}
	}
	

	self.obterRankingItem = function(numero) {
		var item1 = {
			posicao : 1,
			mesa : numero + 7
		};

		var item2 = {
			posicao : 2,
			mesa : numero + 8
		};

		var item3 = {
			posicao : 3,
			mesa : numero + 9
		};
		var rank = [];
		rank.push(item1);
		rank.push(item2);
		rank.push(item3);
		return rank;
	},

	self.mesas = ko.observableArray([]);

	self.init();
}

function GetQueryString(name, defaultValue) {
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), results = regex
			.exec(location.search);
	return results == null ? defaultValue ? defaultValue : ''
			: decodeURIComponent(results[1].replace(/\+/g, " "));
}