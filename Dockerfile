FROM ubuntu:latest
RUN apt update && apt install curl unzip -y
RUN curl -fsSL https://bun.com/install | bash
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:/root/.bun/bin:${PATH}"
CMD ["/root/start.sh"]
