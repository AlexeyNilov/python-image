ARG version=3.10
FROM python:${version}-slim-bullseye

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt \
&& rm -rf /var/lib/apt/lists/*