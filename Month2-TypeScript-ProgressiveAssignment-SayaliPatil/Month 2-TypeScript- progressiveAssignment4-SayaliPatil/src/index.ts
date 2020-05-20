import TodosView from './todosView'
import todoModel from './todoModel';

namespace app{
    export const init =() =>{
        const $todos = document.getElementById('todos');
        const $input = document.getElementById('todo-input');
        const $addbutton =document.getElementById('add');
        
        const todosView =TodosView ($todos, 'create app','learn new tech');
        todosView.render();

        $input.addEventListener('keypress',(event) => {
            console.log("keypress " + event.keyCode);
            if(event['keyCode'] == 13 ){
                console.log("keypress In ");
                todosView.action('add',$input['value']);
                $input['value'] ="";
            }
        });

        $addbutton.addEventListener('click',(event) => {
            console.log("Click Out ");
            if(event['keyCode'] == 13){
                console.log("Click");
                todosView.action('add',$input['value']);
                $input['value'] ="";
            }
        });

    }
}

app.init();