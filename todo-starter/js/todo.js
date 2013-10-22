window.onload = function() {
	document.getElementById('add_item_button').addEventListener('click', todoApp.createTask);	
	document.getElementById('')
}


var todoApp = {
	tasks: [],
	createTask: function(event){
		var due_date_input = event.target.parentNode.children[1];
		var item = new todoItem(due_date_input.value);
		var the_item = event.target.parentNode.firstChild.nextSibling;
		console.log(due_date_input.value);
		
		todoApp.setTaskText(the_item);
		todoApp.appendTask(item);		

	},
	appendTask: function(item){
		this.tasks.push(item);
	},
	setTaskText: function(the_item){
		var list = document.createElement('li');
			list_item = document.createTextNode(the_item.value);
			list.appendChild(list_item);
			var element = document.getElementById('todo_items');
			list.style.color='green';

			// setTimeout (function() {
			// 	list.style.color='yellow';
			// }, ((item.due_date - item.date_created) - 18000000));

			// setTimeout (function() {
			// 	list.style.color='orange';
			// }, ((item.due_date - item.date_created) - 3000000));

			// setTimeout (function() {
			// 	list.style.color='red';
			// }, (item.due_date - item.date_created));

			// if ((item.due_date - item.due_date) < 0){
			// 	alert('You missed your deadline!');
			// }

		var complete_button = document.createElement('button');
			complete_button_value = document.createTextNode('complete');
			complete_button.appendChild(complete_button_value);
			complete_button.onclick = function(){
				completed_item = document.getElementById('todo_items').firstElementChild;
				list2 = document.getElementById('completed_items');
				list2.appendChild(completed_item);
				setComplete(todoApp);
			};

		var delete_button = document.createElement('button');
			delete_button_value = document.createTextNode('delete');
			delete_button.appendChild(delete_button_value);
			delete_button.onclick = function() {
				delete_button.parentNode.remove();
				};

		list.appendChild(complete_button);
		list.appendChild(delete_button)
		element.appendChild(list);
	}

}

var todoItem = function(due_date_input){
	this.name = new_task_field.value;
	this.date_created = new Date();
	this.due_date = due_date_input;
	this.date_completed = "";
}

var setComplete = function(object){
	object.date_completed = new Date();
	console.log(object.date_completed);
}