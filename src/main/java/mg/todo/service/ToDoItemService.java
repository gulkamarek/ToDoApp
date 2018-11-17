package mg.todo.service;

import java.util.List;

import mg.todo.model.ToDoItem;

public interface ToDoItemService {
	
	public void create(ToDoItem toDoItem);
	public void update(ToDoItem toDoItem);
	public ToDoItem edit(Long toDoItemId);
	public void delete(Long toDoItemId);
	public ToDoItem find(Long toDoItemId);
	public List<ToDoItem> getAll();

}
