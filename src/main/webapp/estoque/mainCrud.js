function send(json, callback){
      $.ajax({
          url: 'index.php',
          type: 'post',
          data: json,
          dataType: 'json',
          success: function (data) {
          		callback(data);
          },
          error: function (xhr, status) {
              console.error("Erro ao conectar-se com o server");
              console.error(status);
              console.error(xhr);
          }
      });
}

function crudCreate(){
	send({
		type: 'create'
	}, function(){console.log('deu certo iha');});
}

function crudGet(){
	let id = document.getElementById('idProduto').value;
	send({
			type: 'read',
			from: id
		}, function(){console.log('deu certo iha');}
	);
}

// crudUpdate... crudDelete...
