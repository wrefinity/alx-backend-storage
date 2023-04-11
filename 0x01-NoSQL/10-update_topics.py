#!/usr/bin/env python3
"""
update school topics
"""


def update_topics(mongo_collection, name, topics):
    """
    update all topics of a school via the name
    :param mongo_collection:
    :param name:
    :param topics:
    :return:
    """
    mongo_collection.update_many({"name": name}, {"$set": {"topics": topics}})
