FROM nvidia/cuda:12.1.0-base-ubuntu20.04

RUN apt-get update && apt-get install -y \
    python3 python3-pip && \
    apt-get clean

RUN pip3 install --upgrade pip

# CUDA 12.1에 맞는 PyTorch 설치
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

# PyTorch와 GPU 사용 가능 여부 확인
CMD ["python3", "-c", "\
import torch; \
print(f'PyTorch 설치됨: {torch.__version__}'); \
print(f'GPU 사용 가능: {torch.cuda.is_available()}'); \
print(f'GPU 이름: {torch.cuda.get_device_name(0) if torch.cuda.is_available() else \"사용 불가\"}')"]
