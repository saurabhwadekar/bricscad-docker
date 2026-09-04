# BricsCAD Docker

Run **BricsCAD GUI inside Docker** using X11.

## 🚀 Quick Start

```bash
# Allow Docker to access X11
xhost +local:docker

# Start BricsCAD
docker compose up
```

## 🛑 Stop

```bash
docker compose down
```

## 🔒 Remove X11 Access

```bash
xhost -local:docker
```

## ⚙️ Docker Compose

```yaml
services:
  bricscad:
    image: your-bricscad-image
    environment:
      - DISPLAY=${DISPLAY}
    volumes:
      - /tmp/.X11-unix:/tmp/.X11-unix
```

## 🐛 Troubleshooting

If you get:

```text
Authorization required
could not connect to display :0
```

run:

```bash
xhost +local:docker
```

Then restart:

```bash
docker compose up
```
