# PyTorch GPU 확인용 Docker 이미지

이 Docker 이미지는 PyTorch가 정상적으로 설치되었는지, 그리고 GPU를 사용할 수 있는지를 빠르게 확인하기 위해 만들어졌습니다.

---

## 📦 사용 기술

- **베이스 이미지:** `nvidia/cuda:12.1.0-base-ubuntu20.04`
- **Python 패키지:** `torch`, `torchvision`, `torchaudio` (CUDA 12.1 호환)
- **GPU 확인 코드 포함**

---

## ✅ 사전 준비

1. NVIDIA GPU가 장착된 시스템
2. NVIDIA 드라이버 설치 완료
3. [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html) 설치



## 🛠️ 빌드 방법

```bash
git clone docker-gpu
cd docker-gpu
docker build -t test-pytorch-gpu .
docker run --rm --gpus all test-pytorch-gpu
