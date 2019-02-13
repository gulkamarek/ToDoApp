package mg.todo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mg.todo.model.ToDoItem;
import mg.todo.service.ToDoItemService;

@Controller
public class ToDoController {
	
	@Autowired
	ToDoItemService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String list(Map<String, Object> map){
		map.put("toDoItems", service.getAll());
		map.put("toDoItem", new ToDoItem());
		return "index";
	}

	// not important any more
	@RequestMapping(value = "/addTask", method = RequestMethod.GET)
	public String addTask(Map<String, Object> map){
		map.put("toDoItem", new ToDoItem());
		return "addTask";
	}
	
	// Create
	@RequestMapping(value = "/create", method = RequestMethod.POST)
//	public String create(@ModelAttribute("toDoItem") ToDoItem toDoItem, BindingResult result, Map<String, Object> map) {
	public String create(ToDoItem toDoItem, Map<String, Object> map) {
				
		service.create(toDoItem);
		System.out.println("crud: create called");
		map.put("toDoItem", new ToDoItem());
		
//		return "redirect:/index";
//		return "index";
		return "redirect:/";
	}
	
	// not needed any more
	@RequestMapping(value = "/combined", method = RequestMethod.GET)
	public String combinedView(Map<String, Object> map){
		map.put("toDoItems", service.getAll());
		map.put("toDoItem", new ToDoItem());
		return "combined";
	}
	
	// delete
	@RequestMapping(value = "/delete/{toDoItemId}", method = RequestMethod.GET)
	public String deleteTask(Map<String, Object> map, @PathVariable("toDoItemId") Long toDoItemId){
		service.delete(toDoItemId);
//		return "redirect:/index";
		return "redirect:/";
//		return "index";
	}
	
}
