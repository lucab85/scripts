# from backports import csv
import io, csv
from github import Github
import ConfigParser

Config = ConfigParser.ConfigParser()

Config.read("settings.ini")

def ConfigSectionMap(section):
    dict1 = {}
    options = Config.options(section)
    for option in options:
        try:
            dict1[option] = Config.get(section, option)
            if dict1[option] == -1:
                DebugPrint("skip: %s" % option)
        except:
            print("exception on %s!" % option)
            dict1[option] = None
    return dict1


g = Github(ConfigSectionMap("General")['token'])

org = g.get_organization(ConfigSectionMap("General")['organization'])
print org.email

csvoutfile = open(ConfigSectionMap("General")['output'], 'w')
out = csv.writer(csvoutfile, delimiter=';', quotechar='"', quoting=csv.QUOTE_ALL)
fields = ['avatar_url', 'bio', 'blog', 'collaborators', 'company', 'contributions', 'created_at', 'disk_usage', 'email', 'events_url', 'followers', 'followers_url', 'following', 'following_url', 'gists_url', 'gravatar_id', 'hireable', 'html_url', 'location', 'login', 'name', 'organizations_url', 'owned_private_repos', 'private_gists', 'public_gists', 'public_repos', 'received_events_url', 'repos_url', 'starred_url', 'subscriptions_url', 'total_private_repos', 'updated_at', 'url']
out.writerow(fields)

counter = 1
for i in org.get_members():
	print "%s - %s: %s " % (counter, i, i.email)
	
	data = []
	for j in fields:
		value = getattr(i, j)
		try:
			value = value.encode("ascii", 'ignore')
		except AttributeError:
			pass
		data.append(value)
	out.writerow(data)
	counter += 1
