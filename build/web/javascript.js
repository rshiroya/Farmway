/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


// Get the modal
                var modal = document.getElementById('id01');

                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function(event) {
                  if (event.target == modal) {
                    modal.style.display = "none";
                  }
                }
                // using ajax click function to return result
                var form = $('#form1');
               
                $("button").click(function(){
                    alert("Hello");
                   $.ajax({
                       type: form.attr('method'),
                       url: form.attr('action'),
                       data: form.serialize(),
                       success: function(data) {
                           var result=data;
                           $('#result').attr("value", result);
                       
                        }
                        
                   }); 
                });
                