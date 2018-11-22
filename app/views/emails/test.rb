<li><h2>Object : <%= element.object %></h2></li>
	        		<li><strong>Body :</strong><%= element.body %></li>
	        		<p><%= link_to 'Delete',  email_path(element.id), remote: true, class:'delete_email', method: :delete, data: { confirm: 'Are you sure?' } %></p>