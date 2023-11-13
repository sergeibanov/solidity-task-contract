// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.19; 

contract TaskContract {

    struct Task {
        uint256 taskId;
        string taskDescription;
        bool isCompleted;
    }
 
    Task [] public tasksArray;
    uint256 public nextTaskId = 0;

    function createTask (string memory _description) public { 
        Task memory newTask = Task({
            taskDescription: _description,
            taskId: nextTaskId,
            isCompleted: false
        });

        nextTaskId++;

        tasksArray.push(newTask);

    }

    function toggleTaskCompletion (uint256 _taskId) public {
        require(_taskId < tasksArray.length, "Task does not exist");

        tasksArray[_taskId].isCompleted = !tasksArray[_taskId].isCompleted;

    }

    function getTask(uint256 _taskId) public view returns (uint256, string memory, bool) {
        require(_taskId < tasksArray.length, "Task does not exist");

        Task memory task = tasksArray[_taskId];

        return (task.taskId, task.taskDescription, task.isCompleted);
    }

    function getAllTasks() public view returns(Task [] memory) {
        return tasksArray;
    }
}