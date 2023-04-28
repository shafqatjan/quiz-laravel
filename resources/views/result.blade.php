<div class="row">
      <div class="col-12">
            <h3>{{$user->name}}</h3>
            <table class="table">
                  <tr>
                        <th>Correct Answer</th>
                        <td>{{ intval(@$results['C']) }}</td>
                  </tr>
                  <tr>
                        <th>Wrong Answer</th>
                        <td>{{ intval(@$results['I']) }}</td>
                  </tr>
                  <tr>
                        <th>Skip Answer</th>
                        <td>{{ intval(@$results['S']) }}</td>
                  </tr>
            </table>
      </div>
</div>