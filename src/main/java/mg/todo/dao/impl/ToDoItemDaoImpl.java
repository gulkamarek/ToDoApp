package mg.todo.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mg.todo.dao.ToDoItemDao;
import mg.todo.model.ToDoItem;

@Repository("toDoItemDao")
public class ToDoItemDaoImpl implements ToDoItemDao {

	@Autowired
	SessionFactory sessionFacotry;

	protected Session currentSession() {
		return sessionFacotry.getCurrentSession();
	}

	@Override
	public void create(ToDoItem toDoItem) {
		currentSession().save(toDoItem);
	}

	@Override
	public void update(ToDoItem toDoItem) {
		currentSession().update(toDoItem);

	}

	@Override
	public ToDoItem edit(Long toDoItemId) {
		return find(toDoItemId);
	}

	@Override
	public void delete(Long toDoItemId) {
		currentSession().delete(find(toDoItemId));
	}

	@Override
	public ToDoItem find(Long toDoItemId) {
		return (ToDoItem)currentSession().get(ToDoItem.class, toDoItemId);
	}

	@Override
	public List<ToDoItem> getAll() {
		return currentSession().createCriteria(ToDoItem.class).list();
	}

}
