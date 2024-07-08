import json
import os

CWD = os.path.dirname(__file__)

JSONs = [
    os.path.join(CWD, f) for f in os.listdir(CWD)
    if f.endswith('json') and f != 'output.json'
]

typeMap = {
    'a': '动画',
    'b': '漫画',
    'c': '游戏',
    'd': '文学',
    'e': '原创',
    'f': '网络',
    'g': '其他',
    'h': '影视',
    'i': '诗词',
    'j': '网易云',
    'k': '哲学',
    'l': '抖机灵',
}


class Hitokoto:
    id: int
    uuid: str
    hitokoto: str
    type: str
    source: str
    sourceWho: str | None
    creatorId: int
    commitAt: int
    createAt: int
    editAt: int

    def __init__(
        self,
        id: int,
        uuid: str,
        hitokoto: str,
        type: str,
        source: str,
        sourceWho: str | None,
        creatorId: int,
        createAt: int,
        editAt: int,
    ) -> None:
        self.id = id
        self.uuid = uuid
        self.hitokoto = hitokoto
        self.type = type
        self.source = source
        self.sourceWho = sourceWho
        self.creatorId = creatorId
        self.createAt = createAt
        self.editAt = editAt


output: list[Hitokoto] = []

index = 0
for file in JSONs:
    with open(file, 'r', encoding='utf-8') as f:
        lst = json.loads(f.read())
        for i in lst:
            h = Hitokoto(
                index,
                i['uuid'],
                i['hitokoto'],
                typeMap[i['type']],
                i['from'],
                i['from_who'],
                creatorId=5,
                createAt=int(i['created_at']),
                editAt=int(i['created_at']),
            )
            index += 1
            output.append(h)

jsonList = [o.__dict__ for o in output]

with open(os.path.join(CWD, 'output.json'), 'w+', encoding='utf-8') as f:
    f.write(json.dumps(jsonList, ensure_ascii=False, indent=2))
