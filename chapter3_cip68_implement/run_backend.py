"""
Startup script for the Backend API
Run this from the project root directory.
"""
import os
import sys
# Thêm đường dẫn của thư mục backend vào biến môi trường sys.path
# thư việc thêm đường dẫn này giúp cho việc nhập các module trong dự án trở nên dễ dàng hơn
# Dùng để đảm bảo rằng các mô-đun trong thư mục backend có thể được nhập đúng cách
project_root = os.path.dirname(os.path.abspath(__file__))

sys.path.insert(0, project_root)
sys.path.insert(0, os.path.join(project_root, 'backend'))
import uvicorn


def _str_to_bool(value: str) -> bool:
    return value.strip().lower() in {"1", "true", "yes", "y", "on"}


if __name__ == "__main__":
    host = os.getenv("HOST", "0.0.0.0")
    port = int(os.getenv("PORT", "10000"))
    reload_env = os.getenv("RELOAD", "")
    reload_enabled = _str_to_bool(reload_env) if reload_env else False
    reload_dirs = [project_root] if reload_enabled else None
    uvicorn.run(
        "backend.main:app",
        host=host,
        port=port,
        reload=reload_enabled,
        reload_dirs=reload_dirs
    )
