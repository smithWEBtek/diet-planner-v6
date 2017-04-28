

function attachListeners(event){
	$("#new_quote").click(function(e){
		e.preventDefault();
		new_quote(event);
	})
	$("#generate_random_quotes").click(function(e){
		e.preventDefault();
		generate_random_quotes(event);
	})
	$("#clear_quotes").click(function(e){
		e.preventDefault();
		clear_quotes(event);
	})

	$("#download_csv").click(function(e){
		e.preventDefault();
		download_csv();
	})
};

function new_quote(event){
	$.get("/quotes/new", function(form){
// https://learn.co/tracks/full-stack-web-dev-with-react/rails-and-javascript/building-apis/receiving-api-posts
		$("#new_quote").html(form);
		preventDefault(form);
	});
};

function generate_random_quotes(event){
	console.log("generate_random_quotes clicked!")
}

function clear_quotes(event){
	console.log("clear_quotes clicked!")
}

function download_csv(event){
	console.log("download_csv clicked!")
}

$(function(){
	attachListeners();
});