package mg.todo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Builder;
import lombok.Data;

//@Data
//@Builder
//@Getter
@Entity
@Table(name = "ToDoItem")
public class ToDoItem {
	
	@Id
	@Column(name="ID")
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@GeneratedValue
	private Long toDoItemId;

	@Column(name="NAME")
	private String name;
	
	@Column(name="DESCRIPTION")
	private String description;
	
	@Column(name="COMPLETED")
	private boolean completed;


	public Long getToDoItemId() {
		return toDoItemId;
	}

	public void setToDoItemId(Long toDoItemId) {
		this.toDoItemId = toDoItemId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isCompleted() {
		return completed;
	}

	public void setCompleted(boolean completed) {
		this.completed = completed;
	}
	
}
