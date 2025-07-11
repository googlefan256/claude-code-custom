FROM ubuntu:latest
RUN apt update && apt install curl unzip -y
RUN useradd -ms /bin/bash claude
USER claude
RUN curl -fsSL https://bun.com/install | bash
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/home/claude/.local/bin:/home/claude/.bun/bin:${PATH}"
CMD ["/home/claude/start.sh"]
