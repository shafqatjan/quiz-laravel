@extends('welcome')


@section('content')
<div id="quiz-wrapper">
      <form id="quiz-form">
            <div class="row">
                  <div class="col-12">
                        <div class="form-group">
                              <label for="name">Name</label>
                              <input type="text" class="form-control" id="name" name="name">
                        </div>
                  </div>
            </div>
            <div id="quiz">
                  <button type="button" class="btn btn-primary" id="btn_next">Next</button>
            </div>
      </form>
</div>
@stop


@section('script')
<script>
      $(document).ready(function() {

            $("#name").keydown(function(event){
                  if(event.keyCode == 13) {
                        event.preventDefault();
                        $("#btn_next").trigger("click");
                        return false;
                  }
            });

            $('#btn_next').on('click', function(e) {
                  if ($('#name').val() == '') {
                        alert("Please enter your name.");
                        return false;
                  }
                  e.preventDefault();
                  var formData = $("#quiz-form").serialize();
                  $.ajax({
                        type: 'POST',
                        url: '/',
                        data: formData,
                        success: function(res) {
                              $('#quiz').html(res.questions);
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                              // Handle form submission error
                        }
                  });
            });

            $("body").on("click", ".next-question", function() {

                  if ($(this).hasClass("skip")) {
                        $(this).closest('.question').find('.no-option').trigger('click');
                  } else {
                        if ($(this).closest('.question').find(':checked').val() == '0') {
                              alert("Choose one option or skip the question.");
                              return false;
                        }
                  }

                  $(".question").addClass("d-none");
                  if ($(".question-" + $(this).data("next")).length > 0) {
                        $(".question-" + $(this).data("next")).removeClass("d-none");
                  } else {
                        var formData = $("#quiz-form").serialize();
                        $.ajax({
                              type: 'POST',
                              url: '/save_quiz',
                              data: formData,
                              success: function(response) {
                                    $('#quiz-wrapper').html(response.html);
                              },
                              error: function(jqXHR, textStatus, errorThrown) {
                                    // Handle form submission error
                              }
                        });
                  }
            });
      });
</script>
@stop