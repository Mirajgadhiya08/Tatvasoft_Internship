// Services/ToDoService.cs
using System.Collections.Generic;
using System.Linq;
using ToDoAPI.Models;

namespace ToDoAPI.Services
{
    public class ToDoService : IToDoService
    {
        private readonly List<ToDoItem> _toDoItems;

        public ToDoService()
        {
            _toDoItems = new List<ToDoItem>
            {
                new ToDoItem { Id = 1, Title = "Task 1", IsCompleted = false },
                new ToDoItem { Id = 2, Title = "Task 2", IsCompleted = true }
            };
        }

        public IEnumerable<ToDoItem> GetAll()
        {
            return _toDoItems;
        }

        public ToDoItem GetById(int id)
        {
            return _toDoItems.FirstOrDefault(item => item.Id == id);
        }

        public void Add(ToDoItem item)
        {
            item.Id = _toDoItems.Max(x => x.Id) + 1;
            _toDoItems.Add(item);
        }

        public void Update(ToDoItem item)
        {
            var existingItem = GetById(item.Id);
            if (existingItem != null)
            {
                existingItem.Title = item.Title;
                existingItem.IsCompleted = item.IsCompleted;
            }
        }

        public void Delete(int id)
        {
            var item = GetById(id);
            if (item != null)
            {
                _toDoItems.Remove(item);
            }
        }
    }
}
