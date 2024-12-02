## Features

- **Task Management Contract**: Implements a Solidity smart contract for managing a list of tasks, showcasing basic data structures and functionality.
- **Educational Focus**: Emphasizes practical learning and application of Solidity development principles.
- **Code Quality**: Follows best practices for smart contract design and implementation.

## Getting Started 

1. Clone the repository.
2. Open the project in your preferred development environment.
3. Compile the smart contracts using tools like Remix or Foundry.
4. Deploy the contracts to an Ethereum testnet of your choice (e.g., Sepolia, Goerli).
5. Interact with the deployed contracts via a suitable frontend or directly using Web3.js.

## Task Contract Overview

This repository includes a smart contract for managing tasks. Below are the contract's key functionalities:

### Features

- **Task Structure**:
  - `uint256 taskId`: Unique identifier for tasks.
  - `string taskDescription`: Description of the task.
  - `bool isCompleted`: Indicates if the task is completed.

- **Core Functions**:
  - `createTask(string memory _description)`: Adds a new task with a unique ID.
  - `toggleTaskCompletion(uint256 _taskId)`: Toggles the completion status of a task.
  - `getTask(uint256 _taskId)`: Fetches task details by ID.
  - `getAllTasks()`: Retrieves all tasks as an array.

- **Testing**:
  - The contract is thoroughly tested in an Ethereum development environment to ensure reliability and correct functionality.

## Contributions

Contributions to this project are welcome. Feel free to open issues or submit pull requests.

## License

This project is licensed under the [MIT License](LICENSE).
