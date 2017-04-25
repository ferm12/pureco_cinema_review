// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//


(function(){


    function ajaxmoviedb()
    {
        console.log(arguments[0]);
        $.ajax({
            url: "https://api.themoviedb.org/4/list/20620?page=1&api_key=4fdf7a5b08e89d9db657d0d494b1d392&sort_by="+arguments[0],
            type : 'GET',
            dataType:'json',
            success : function(data, textStatus, jqXHR) {              
            var g = {
                  "28": "Action",
                  "12": "Adventure",
                  "16": "Animation",
                  "35": "Comedy",
                  "80": "Crime",
                  "99": "Documentary",
                  "18": "Drama",
                  "10751": "Family",
                  "14": "Fantasy",
                  "36": "History",
                  "27": "Horror",
                  "10402": "Music",
                  "9648": "Mystery",
                  "10749": "Romance",
                  "878": "Science Fiction",
                  "10770": "TV Movie",
                  "53": "Thriller",
                  "10752": "War",
                  "37": "Western"
            };
                console.log(data);
                gloval = data;
                var str = "";
                for (var i = 1; i <= data.results.length; i++ )
                {
                    str +="<li><br/>"+
                        "<div class='movie'>"+
                            "<header>"+
                                "<img src='https://image.tmdb.org/t/p/w185_and_h278_bestv2/"+data.results[i].poster_path+"' alt='Placeholder'/>"+
                                "<h2></h2><h2><a href='/movies/"+i+"'>"+data.results[i].original_title+"</a> <br/><br/>Released: " +data.results[i].release_date+"</h2>"+

                            "</header>"+
                            "<p>"+data.results[i].overview+"</p>"+
                            "<table>"+
                                "<tbody><tr>"+
                                    "<td>Genre: "+g[data.results[i].genre_ids[0]]+", "+g[data.results[i].genre_ids[1]]+"</td>"+
                                "</tr>"+
                                    // "<th>Total Gross</th>"+
                                    // "<td>$318,412,101.00</td>"+
                                "</tr>"+
                            "</tbody></table>"
                        "</div>"+
                    "</li><hr>";
                }
                $('#movies.moviedbs').html(str);
                console.log(str);
            },
            error: function(request,error){
                // console.log("Request: "+JSON.stringify(request));
            },
            complete: function(jqXHR, textStatus){
                console.log(textStatus)
            }

         });
    }
    $(document).on("click", "#moviedb", function(e) {
        e.preventDefault();
        ajaxmoviedb("title.asc");
    });
    $(document).on("click", "#moviedb-title", function(e) {
        e.preventDefault();
        ajaxmoviedb("title.asc");
    });
    $(document).on("click", "#moviedb-release", function(e) {
        e.preventDefault();
        ajaxmoviedb("primary_release_date.desc");
    });
    $(document).on("click", "#moviedb-gender", function(e) {
        e.preventDefault();
        ajaxmoviedb("vote_average.desc");
    });

})();
