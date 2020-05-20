const todoView = (todoModel) => {
    const render = () => {
        const{ id, title, completed} = todoModel;
        let $title = completed ? `<del class ="w-25 text-truncated"> ${title} </del>` : `<span class= "w-25 text-truncate">${title}</span>` 
        
        return `<li class= "list-group-item" data-id = '${id}'> 
            <input type = "checkbox" class= "toggleCompleted" ${completed ? "checked":""}>
            <button type= "button"   class="remove close text-danger">
            <span>x</span>
            </button>
            ${title}
            </li>`;
    }
    
    return {
        render
    }
};

export default todoView;