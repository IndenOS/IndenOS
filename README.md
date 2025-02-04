# IndenOS

IndenOS is a custom operating system designed to be independent, providing a platform with minimal dependencies. It is built with the goal of achieving freedom from existing OS ecosystems, allowing users to experience a simple yet functional system from the ground up. The project is aimed at developers and hobbyists interested in OS development.

## Development Status

Please note that **IndenOS is still in the early stages of development**. Many features have not yet been implemented, and there are still many areas for improvement. This project is a work in progress, so expect missing functionality and incomplete components.

## Features
- Simple kernel built with basic functionality.
- Text mode output for the early stages of development.
- Minimalistic design for users interested in low-level system programming.

## Getting Started

### Prerequisites

Before you begin, make sure you have the following tools installed:
- `i686-linux-gnu-gcc` (GCC cross-compiler)
- `nasm` (Assembler)
- `qemu` (Virtual Machine Emulator)

You can install these tools via your package manager on Linux.

### Build the OS

To build the OS, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/IndenOS/IndenOS.git
   cd IndenOS

2. Clean any previous build files:

make clean


3. Compile the OS:

make


4. Run the OS in a QEMU virtual machine:

qemu-system-x86_64 -drive format=raw,file=os-image.bin



Contributing

Contributions are welcome! Please fork the repository, make your changes, and submit a pull request.



