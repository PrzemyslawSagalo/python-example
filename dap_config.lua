-- I use dap-python as I don't want to manually set `adapters.python`.
local dap_python = require('dap-python')

dap_python.setup(os.getenv('PYTHON_INTERPRETER_PATH'))

require('dap').configurations.python = {
    {
        type = 'python',
        request = 'launch',
        name = "Run current file",
        program = '${file}',
        justMyCode = false,
    },
    {
        type = 'python',
        request = 'launch',
        name = 'pytest run current file',
        module = 'pytest',
        args = {'${file}', '--log-cli-level=DEBUG'},
        justMyCode = false,
    },
    {
        type = 'python',
        request = 'launch',
        name = 'pytest run current file on many cores',
        module = 'pytest',
        args = {'-n', 'auto', '${file}', '--log-cli-level=DEBUG'},
        justMyCode = false,
    },
    {
        type = 'python',
        request = 'launch',
        name = 'pytest run all unit tests',
        module = 'pytest',
        args = {'tests/test_unit/', '--log-cli-level=DEBUG'},
        justMyCode = false,
    },
    {
        type = 'python',
        request = 'launch',
        name = 'pytest run godm unit tests',
        module = 'pytest',
        args = {'tests/test_unit/test_godm/', '--log-cli-level=DEBUG'},
        justMyCode = false,
    },
    {
        type = 'python',
        request = 'launch',
        name = 'Run current file with arguments',
        program = '${file}',
        args = {'--arg1', 'value1', '--arg2', 'value2'},
    },
}
