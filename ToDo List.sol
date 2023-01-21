// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract TodoList
{
    struct ToDo
    {
        string username;
        bool completed;
    }

    ToDo[] public Tasks;

    // we are creating the user
    function CreateUser(string calldata _username) external
    {
        Tasks.push(ToDo(
            {
                username: _username,
                completed: false
            }
        ));
    }

    // If any user left the task he want to nominate someone
    function UpdateUser(uint _index, string memory _username) external
    {
        ToDo storage NewTasks = Tasks[_index];
        NewTasks.username=_username;
    } 

    // This toggle function is used for turning on/off
    function ToggleCompleted (uint _index) external
    {
        ToDo storage NewTasks = Tasks[_index]; //0,1,2,3
        NewTasks.completed = !NewTasks.completed; 
    }

    //We are getting the task information 
    function getUserTaskinfo (uint _index) external view returns (string memory, bool)
    {
        ToDo storage NewTasks = Tasks[_index];
        return (NewTasks.username,NewTasks.completed);
    }
}
