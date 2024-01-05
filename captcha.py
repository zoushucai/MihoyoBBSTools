# from request import http
import random
import time

import requests
from loguru import logger as log


def captcha_renren(gt: str, challenge: str, referer = None, userlabel = None):
    log.warning("--------------------开始验证验证码--------------------")
    log.info(f"验证码referer: {referer}") # 可能需要
    log.info(f"验证码label: {userlabel}")  # 用于区分是哪个验证码, 用户自定义
    log.info(f"gt: {gt}")
    log.info(f"challenge: {challenge}")
    assert gt and challenge, "gt 和 challenge 不能为空"
    data={
            "appkey": "2b63b7e1e22d4403a5430c77580a3f7d", 
            "gt": gt,
            "challenge": challenge,
            "referer": referer
            # 修改为自己的 useragent
            # "useragent": 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/119.0',
    }
    if not referer:
        data.pop("referer", None)
    time.sleep(random.randint(3, 6))
    # urllib3.disable_warnings()
    rep = requests.post(
        url="http://api.rrocr.com/api/recognize.html",
        data = data
    )
    time.sleep(random.randint(3, 6))
    log.warning(f"验证码1返回的结果rep: {rep}")
    log.warning(f"验证码11返回的结果rep: {rep.json()}")
    rep = rep.json()
    return rep["data"]["validate"]


try:
    from mhylogin.shangcaptchas import bbs_captcha2, game_captcha2
    log.info(f"导入成功")
    # 如果导入成功，你可以在这里使用导入的模块
    def game_captcha(gt: str, challenge: str, referer = None, userlabel = None):
        return game_captcha2(gt, challenge, referer, userlabel)

    def bbs_captcha(gt: str, challenge: str, referer = None, userlabel = None):
        return bbs_captcha2(gt, challenge, referer, userlabel)

except ImportError:
    log.info(f"...导入失败....")
    # 如果导入失败，你可以在这里处理错误或执行其他操作
    def game_captcha(gt: str, challenge: str, referer = None, userlabel = None):
        return captcha_renren(gt, challenge, referer, userlabel)  # 失败返回None 成功返回validate

    def bbs_captcha(gt: str, challenge: str, referer = None, userlabel = None):
        return captcha_renren(gt, challenge, referer, userlabel) 


