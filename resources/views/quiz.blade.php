<div class="question {{$qn > 1 ? 'd-none' : '' }} question-{{$qn}} mt-3">

      <div class="row">
            <div class="col-12">
                  Q. No: {{$qn}} - {{$question->question}}
            </div>
      </div>
      <div class="row ml-2">
            <div class="col-12">
                  <input type="radio" name="question[{{$question->id}}]" value="0" checked class="d-none no-option">
                  @if($question->options)
                        @foreach($question->options as $option_id => $option_label)
                        <div class="form-check">
                              <input class="form-check-input" type="radio" name="question[{{$question->id}}]" value="{{$option_id}}" id="option_{{$option_id}}">
                              <label class="form-check-label" for="option_{{$option_id}}">
                                    {{$option_label}}
                              </label>
                        </div>
                        @endforeach
                  @endif
            </div>
      </div>
      <div class="row mt-3">
            <div class="col-12">
            <a href="javascript:void(0)" class="btn btn-info next-question skip" data-next="{{$qn+1}}">Skip</a>      
            <a href="javascript:void(0)" class="btn btn-primary next-question" data-next="{{$qn+1}}">Next</a>
            </div>
      </div>
</div>
