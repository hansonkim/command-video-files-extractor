## shell command for move video files to target directory and remove others

지정 디렉토리 아래의 디렉토리를 순회하며
비디오 파일을 검색하여 지정 디렉토리로 이동시키고 비디오 파일을 제외한 파일들은 삭제합니다.
지정 디렉토리에 같은 파일명이 있는 경우 파일명에 .~{seq}~ 붙여 중복을 처리합니다.

~~torrent 에서 디렉토리에 잡스러운 파일들을 가득 남아 넣은 것에 빡쳐 제작함~~

**__example__**

**before**
```
video_dir -- 1.mkv
           - 2.avi
           - a_dir  - 1.mkv
                    - 2.wmv
           - b_dir  - 3.avi
                    - abc.html
                    - def.txt
```
run
./mv_video.sh video_dir

**after**
```
video_dir -- 1.mkv
           - 2.avi
           - 1.mkv.~1~
           - 2.wmv
           - 3.avi
```
