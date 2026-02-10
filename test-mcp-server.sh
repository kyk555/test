#!/bin/bash

# 测试脚本
echo "=== MCP Server Security Test ==="

# 测试1: 正常请求
echo "1. Testing normal request:"
echo '{"jsonrpc":"2.0","id":1,"method":"tools/call","params":{"name":"greet","arguments":{"name":"Alice"}}}' | go run hello-mcp-server.go

# 测试2: 超大请求测试
echo -e "\n2. Testing oversized request:"
python3 -c "
import json
data = {'jsonrpc': '2.0', 'id': 2, 'method': 'tools/call', 'params': {'name': 'greet', 'arguments': {'name': 'A' * 2000}}}
print(json.dumps(data))
" | head -c 200000 | go run hello-mcp-server.go

# 测试3: 非法JSON测试
echo -e "\n3. Testing invalid JSON:"
echo '{"jsonrpc":"2.0","id":3,"method":"tools/call"' | go run hello-mcp-server.go

# 测试4: 无效工具测试
echo -e "\n4. Testing invalid tool:"
echo '{"jsonrpc":"2.0","id":4,"method":"tools/call","params":{"name":"invalid_tool","arguments":{"name":"Bob"}}}' | go run hello-mcp-server.go

# 测试5: 缺少参数测试
echo -e "\n5. Testing missing parameters:"
echo '{"jsonrpc":"2.0","id":5,"method":"tools/call","params":{"name":"greet"}}' | go run hello-mcp-server.go

# 测试6: 超长名称测试
echo -e "\n6. Testing oversized name:"
python3 -c "
import json
data = {'jsonrpc': '2.0', 'id': 6, 'method': 'tools/call', 'params': {'name': 'greet', 'arguments': {'name': 'A' * 200}}}
print(json.dumps(data))
" | go run hello-mcp-server.go

echo -e "\n=== Test completed ==="