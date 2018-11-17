package mg.todo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import mg.todo.dao.ToDoItemDao;
import mg.todo.dao.impl.ToDoItemDaoImpl;
import mg.todo.model.ToDoItem;
import mg.todo.service.ToDoItemService;

@Service
@Transactional
//@Transactional(propagation=Propagation.SUPPORTS, rollbackFor=Exception.class)
public class ToDoItemServiceImpl implements ToDoItemService{

	@Autowired
	ToDoItemDaoImpl toDoItemDaoImpl;
	
	@Override
	public void create(ToDoItem toDoItem) {
		toDoItemDaoImpl.create(toDoItem);
	}

	@Override
	public void update(ToDoItem toDoItem) {
		toDoItemDaoImpl.update(toDoItem);
	}

	@Override
	public ToDoItem edit(Long toDoItemId) {
		return toDoItemDaoImpl.edit(toDoItemId);
	}

	@Override
	public void delete(Long toDoItemId) {
		toDoItemDaoImpl.delete(toDoItemId);
		
	}

	@Override
	public ToDoItem find(Long toDoItemId) {
		return toDoItemDaoImpl.find(toDoItemId);
	}

	@Override
	public List<ToDoItem> getAll() {
		return toDoItemDaoImpl.getAll();
	}

}
