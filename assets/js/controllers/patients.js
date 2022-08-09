class clients {

  static init() {
    $("#add-CLIENT").validate({
      submitHandler: function (form, event) {


        event.preventDefault();
        var data = CSUtils.jsonize_form($(form));
        console.log(data);
        if (data.id) {
          clients.update(data);
        } else {
          clients.add(data);
        }


      }
    });
    clients.get_all();

  }

  static get_all() {
    $("#clients-table").DataTable({
      processing: true,
      serverSide: true,
      bDestroy: true,
      pagingType: "simple",

      responsive: false,

      "language": {
        "zeroRecords": "Nothing found - sorry",
        "info": "Showing page _PAGE_ of many",
        "infoEmpty": "No records available",
        "infoFiltered": "(filtered from _MAX_ total records)"
      },


      "ajax": {
        url: "http://localhost/api/treners/clients?offset=0&limit=1000000000&order=" + encodeURIComponent("+id"),
        type: "GET",
        beforeSend: function (xhr) {
          xhr.setRequestHeader('Authorization', localStorage.getItem("token"));
        },
        dataSrc: function (resp) {
          console.log(resp);
          return resp;
        },



        data: function (d) {

          d.offset = d.start;
          d.limit = d.length;
          d.search = d.search.value;
          d.order = encodeURIComponent((d.order[0].dir == 'asc' ? "-" : "+") + d.columns[d.order[0].column].data);

          delete d.start;
          delete d.length;
          delete d.columns;
          delete d.draw;



          console.log(d);
        }
      },

      preDrawCallback: function (settings) {

        if (settings.aoData.length < settings._iDisplayLength) {
          //disable pagination
          settings._iRecordsTotal = 0;
          settings._iRecordsDisplay = 0;
        } else {
          //enable pagination
          settings._iRecordsTotal = 100000000;
          settings._iRecordsDisplay = 1000000000;
        }
      },


      columns: [

        {
          "data": "id",
          "render": function (data, type, row, meta) {
            return '<div style="min-width:60px;"> <span class="badge">' + data + '</span><a class="pull-right" style="font-size: 15px; cursor: pointer;" onclick="clients.pre_edit(' + data + ')"><i class="fa fa-edit"></i></a> </div>';
          }
        },
        { "data": "accounts_id" },
        { "data": "Name" },
        { "data": "DateOfBirth" },
        { "data": "PhoneNumber" },
        { "data": "Email" },
        { "data": "City" },
        { "data": "Address" },
        { "data": "Country" },
        { "data": "JMBG" },
        { "data": "MedicalInsuranceNO" },
        { "data": "NumberOfDoses" },
        { "data": "protein" },
        { "data": "GymPlace" },
        { "data": "GymDate" },
        { "data": "Status" }






      ],
    });

  }



  static add(CLIENT) {

    RestClient.post("http://localhost/api/register", CLIENT, function (data) {

      toastr.success("CLIENT has been successfully added");
      this.get_all();
      $("#add-CLIENT").trigger("reset");
      $("#add-CLIENT-modal").modal("hide");



    });


  }

  static update(CLIENT) {
    RestClient.put("http://localhost/api/treners/clients/" + CLIENT.id, CLIENT, function (data) {
      toastr.success("CLIENT info has been updated");

      clients.get_all();

      $("#add-CLIENT").trigger("reset");
      $("#add-CLIENT *[name='id']").val("");
      $('#add-CLIENT-modal').modal("hide");


    });

  }

  static pre_edit(id) {
    RestClient.get("http://localhost/api/treners/clients/" + id, function (data) {
      CSUtils.json2form("#add-CLIENT", data);
      $("#add-CLIENT-modal").modal("show");
    });


  }




}
