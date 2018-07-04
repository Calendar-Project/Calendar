# Calendar
BIL 495 PROJECT
Heroku Address: https://pure-chamber-42347.herokuapp.com/

<%start_date =params.fetch(:start_date,Date.today).to_date%>
<% date_range= (start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week).to_a %>

<script type="text/javascript">
    $(function () {
        $('#datetimepicker1').datetimepicker();
    });
</script>

<div class='input-group date' id='datetimepicker1'>
    <input type='text' class="form-control" />
    <span class="input-group-addon">
        <span class="glyphicon glyphicon-calendar"></span>
    </span>
</div>
